.class Lcom/meizu/settings/language/FlymeCountryPicker$3;
.super Ljava/lang/Object;
.source "FlymeCountryPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeCountryPicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeCountryPicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeCountryPicker;)V
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$3;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 421
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$3;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 423
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_b
    return-void
.end method
