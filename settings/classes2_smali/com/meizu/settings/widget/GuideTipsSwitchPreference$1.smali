.class Lcom/meizu/settings/widget/GuideTipsSwitchPreference$1;
.super Ljava/lang/Object;
.source "GuideTipsSwitchPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/GuideTipsSwitchPreference;Landroid/view/View;)V
    .registers 3

    .line 52
    iput-object p1, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference$1;->this$0:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    iput-object p2, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference$1;->this$0:Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    invoke-static {v0}, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->access$000(Lcom/meizu/settings/widget/GuideTipsSwitchPreference;)Lcom/meizu/common/widget/GuidePopupWindow;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference$1;->val$view:Landroid/view/View;

    const v1, 0x7f0a0702

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v1, -0x1e

    const/16 v2, 0x32

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method
