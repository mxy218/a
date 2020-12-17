.class Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;
.super Ljava/lang/Object;
.source "ColorTemperatureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->registerDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;->this$0:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;->this$0:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

    new-instance v1, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1$1;-><init>(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;)V

    invoke-static {v0, v1}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->access$002(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    .line 77
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;->this$0:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

    invoke-static {v0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->access$200(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;)Lcom/meizu/settings/display/QcomDisplayWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;->this$0:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

    invoke-static {p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->access$000(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;)Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->registerDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V

    return-void
.end method
