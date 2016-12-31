package com.buyerschoice.controller;

import java.util.List;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.*;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.buyerschoice.dao.PackageDao;
import com.buyerschoice.model.Package;

import javax.servlet.http.*;

@Controller
public class PackageController {

	@Autowired
	PackageDao pdao;

	public PackageController() {

	}

	@RequestMapping(value = "/diffpackage", method = RequestMethod.GET)
	public ModelAndView showPackage() {

		ModelAndView mvc = new ModelAndView("packageView", "package", new Package());
		String packages = pdao.Retrive();
		mvc.addObject("mylist", packages);
		return mvc;
	}

	@RequestMapping(value = "/Insertpackage", method = RequestMethod.POST)
	public ModelAndView addPackage(Package pack, Model m) {
		System.out.println("helloooo");
		ModelAndView m1 = new ModelAndView("packageView", "package", new Package());
		System.out.println(pack.getPackageId());
		pdao.insert(pack);
		String path = "C:\\diginxt\\BuyersChoice\\src\\main\\webapp\\resources\\images\\";
		path = path + String.valueOf(pack.getPackageId()) + ".jpg";
		File f = new File(path);

		MultipartFile filedet = pack.getPimage();

		if (!filedet.isEmpty()) {
			try {
				byte[] bytes = filedet.getBytes();
				System.out.println(bytes.length);
				FileOutputStream fos = new FileOutputStream(f);
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(bytes);
				bs.close();
				fos.close();
				System.out.println("File Uploaded Successfully");
			} catch (Exception e) {
				System.out.println("Exception Arised" + e);
			}
		} else {
			System.out.println("File is Empty not Uploaded");

		}
		boolean data = false;
		String packages = pdao.Retrive();
		m1.addObject("checkk", data);
		m1.addObject("mylist", packages);
		return m1;
	}

	@RequestMapping(value = "/Deletepackage", method = RequestMethod.GET)
	public ModelAndView DeletePackage(@RequestParam("did") int pid) {

		pdao.Delete(pid);
		ModelAndView mvc = new ModelAndView("packageView", "package", new Package());
		String packages = pdao.Retrive();
		mvc.addObject("mylist", packages);
		return mvc;
	}

	@RequestMapping(value = "/plzUpdatedpackage", method = RequestMethod.GET)
	public ModelAndView plzUpdatedPackage(@RequestParam("did") int pid) {
		Package cat = pdao.UpdatePackage(pid);
		boolean data = true;
		ModelAndView mvc = new ModelAndView("packageView", "package", cat);
		String packages = pdao.Retrive();
		mvc.addObject("mylist", packages);
		mvc.addObject("checkk", data);
		return mvc;
	}

	@RequestMapping(value = "/plzNowUpdatedpackage", method = RequestMethod.POST)
	public ModelAndView plzNowUpdatedPackage(@ModelAttribute("package") Package pack, HttpServletRequest request) {

		String pid = request.getParameter("packageId");
		String pname = request.getParameter("packageName");
		String pdesc = request.getParameter("packageDescription");
		boolean data = false;
		int pid1 = Integer.parseInt(pid);
		pdao.NowUpdatePackage(pid1, pname, pdesc);
		ModelAndView mvc = new ModelAndView("packageView", "package", new Package());
		String packages = pdao.Retrive();
		mvc.addObject("mylist", packages);
		mvc.addObject("checkk", data);
		return mvc;
	}
}
