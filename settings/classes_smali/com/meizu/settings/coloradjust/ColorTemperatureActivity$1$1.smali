.class Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1$1;
.super Ljava/lang/Object;
.source "ColorTemperatureActivity.java"

# interfaces
.implements Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;


# direct methods
.method constructor <init>(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1$1;->this$1:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1$1;->this$1:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;

    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;->this$0:Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

    invoke-static {p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->access$100(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;)V

    return-void
.end method
