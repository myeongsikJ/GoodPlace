package com.spring.ex.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.EquipDAO;

@Service
public class EquipUpdateCommand {

	@Autowired
	private EquipDAO dao;

	public int execute(Model model) {
		System.out.println("========== Equip Update Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String p_id = request.getParameter("p_id");
		String p_name = request.getParameter("p_name");
		String p_content = request.getParameter("p_content");
		String p_kind = request.getParameter("p_kind");
		String p_price = request.getParameter("p_price");
		System.out.println("Update ID : " + p_id);

		int result = dao.updateEquip(p_id, p_name, p_content, p_kind, p_price);
		if (1 == result) {
			System.out.println("========== Update Complete ==========");

			return result;
		} else {
			System.out.println("========== Update Failed ==========");

			return result;
		}
	}
}
