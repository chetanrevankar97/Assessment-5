import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ProductClass3 {
	
	@Id
	private String id;
	private String name;
	private String desc;
	private int price;
	private int quantity;
	
	public ProductClass3() {
		super();
	}

	public ProductClass3(String id, String name, String desc, int price, int quantity) {
		super();
		this.id = id;
		this.name = name;
		this.desc = desc;
		this.price = price;
		this.quantity = quantity;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
