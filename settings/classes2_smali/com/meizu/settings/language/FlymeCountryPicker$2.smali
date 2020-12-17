.class Lcom/meizu/settings/language/FlymeCountryPicker$2;
.super Landroid/os/AsyncTask;
.source "FlymeCountryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeCountryPicker;->initRegionList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeCountryPicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeCountryPicker;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$2;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 301
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 305
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$2;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$300(Lcom/meizu/settings/language/FlymeCountryPicker;)Ljava/util/List;

    move-result-object p1

    .line 306
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$2;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$400(Lcom/meizu/settings/language/FlymeCountryPicker;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$500(Lcom/meizu/settings/language/FlymeCountryPicker;Ljava/util/List;)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 301
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$2;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {v0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$402(Lcom/meizu/settings/language/FlymeCountryPicker;Ljava/util/List;)Ljava/util/List;

    .line 313
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$2;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$400(Lcom/meizu/settings/language/FlymeCountryPicker;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$600(Lcom/meizu/settings/language/FlymeCountryPicker;Ljava/util/List;)V

    return-void
.end method
