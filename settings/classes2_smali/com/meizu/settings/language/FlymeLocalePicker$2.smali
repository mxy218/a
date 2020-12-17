.class Lcom/meizu/settings/language/FlymeLocalePicker$2;
.super Ljava/lang/Object;
.source "FlymeLocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeLocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeLocalePicker;I)V
    .registers 3

    .line 372
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLocalePicker$2;->this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

    iput p2, p0, Lcom/meizu/settings/language/FlymeLocalePicker$2;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$2;->this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

    iget v1, p0, Lcom/meizu/settings/language/FlymeLocalePicker$2;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/language/FlymeLocalePicker;->removeDialog(I)V

    .line 375
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$2;->this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

    invoke-virtual {v0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 376
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$2;->this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeLocalePicker;->access$200(Lcom/meizu/settings/language/FlymeLocalePicker;)Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeLocalePicker;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method
