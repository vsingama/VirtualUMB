public class Product
{
    private int id;
    private int uid;
    private string imagepath;
    private string modelpath;
    private string description;
    private int likes;
    private int views;

    public int Model_ID { get; set; }
    public int Umass_ID { get; set; }
    public string Name { get; set; }
    public string Catageory { get; set; }
    public string ImagePath { get; set; }
    public string ModelPath { get; set; }
    public string Model_Description { get; set; }
    public int Likes_Count { get; set; }
    public int Views_Count { get; set; }
    public string Creation_Date { get; set; }

    public Product(int id, int umass_ID, string name, string type, string image, string model, string description, int likes, int views, string date)
    {
        Model_ID = id;
        Umass_ID = umass_ID;
        Name = name;
        Catageory = type;         
        ImagePath = image; 
        ModelPath=model;
        Model_Description = description;
        Likes_Count = likes;
        Views_Count = views;
        Creation_Date = date;
    }

    public Product(int umass_ID , string name, string type, string image, string model, string description, int likes, int views, string date)
    {
        Umass_ID = umass_ID;
        Name = name;
        Catageory = type;
        ImagePath = image;
        ModelPath = model;
        Model_Description = description;
        Likes_Count = likes;
        Views_Count = views;
        Creation_Date = date;
    }

    public Product(int id, int uid, string name, string catageory, string imagepath, string modelpath, string description, int likes, int views)
    {
        // TODO: Complete member initialization
        Model_ID = id;
        Umass_ID = uid;
        Name = name;
        Catageory = catageory;
        ImagePath = imagepath;
        ModelPath = modelpath;
        Model_Description = description;
        Likes_Count = likes;
        Views_Count = views;
    }
}