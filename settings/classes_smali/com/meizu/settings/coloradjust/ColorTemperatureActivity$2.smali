.class Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$2;
.super Ljava/lang/Object;
.source "ColorTemperatureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->setDefaultColorBalance(Landroid/content/ContentResolver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

.field final synthetic val$colorBalance:I

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;Landroid/content/ContentResolver;I)V
    .registers 4

    .line 175
    iput-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$2;->this$0:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

    iput-object p2, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$2;->val$contentResolver:Landroid/content/ContentResolver;

    iput p3, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$2;->val$colorBalance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$2;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 179
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$2;->this$0:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

    invoke-static {v0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->access$200(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;)Lcom/meizu/settings/display/QcomDisplayWrapper;

    move-result-object v0

    iget p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$2;->val$colorBalance:I

    invoke-virtual {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultColorBalance(I)V

    :cond_13
    return-void
.end method
