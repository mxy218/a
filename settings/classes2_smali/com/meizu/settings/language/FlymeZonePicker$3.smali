.class Lcom/meizu/settings/language/FlymeZonePicker$3;
.super Ljava/lang/Object;
.source "FlymeZonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeZonePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeZonePicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeZonePicker;)V
    .registers 2

    .line 568
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker$3;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker$3;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-virtual {v0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 573
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeZonePicker$3;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-virtual {v1}, Landroid/app/ListFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeZonePicker$3;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeZonePicker;->access$500(Lcom/meizu/settings/language/FlymeZonePicker;)Z

    move-result p0

    if-nez p0, :cond_1b

    .line 574
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1b
    return-void
.end method
