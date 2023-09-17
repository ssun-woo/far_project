/*
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.PathVariable; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestParam;
 * 
 * import com.far.service.TabService;
 * 
 * import antlr.collections.List;
 * 
 * @Controller
 * 
 * @RequestMapping("/community/tab") public class TabController {
 * 
 * private final TabService tabService; // TabService를 주입하세요.
 * 
 * @Autowired public TabController(TabService tabService) { this.tabService =
 * tabService; }
 * 
 * @GetMapping("/{category_name}") public String getTabsByCategoryAndOrderBy(
 * 
 * @PathVariable String category_name,
 * 
 * @RequestParam(name = "orderby") String orderBy, Model model) { List<Tab> tabs
 * = tabService.getTabsByCategoryAndOrderBy(category_name, orderBy);
 * 
 * // 필요한 데이터를 모델에 추가합니다. model.addAttribute("category_name", category_name);
 * model.addAttribute("orderBy", orderBy); model.addAttribute("tabs", tabs);
 * 
 * // 뷰 페이지로 이동합니다. return "community/tab-list"; // 실제 뷰 페이지의 경로를 설정하세요. } }
 */