.class Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;
.super Ljava/lang/Object;
.source "ColorManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayConn"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/snapdragon/sdk/display/ColorManager$1;)V
    .registers 2

    .line 316
    invoke-direct {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 320
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    move-result-object p0

    if-nez p0, :cond_10

    .line 321
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Listener is null"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_10
    invoke-static {p2}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    invoke-static {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$302(Lcom/qti/snapdragon/sdk/display/IColorService;)Lcom/qti/snapdragon/sdk/display/IColorService;

    .line 325
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$400()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2f

    .line 326
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Callback called"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;->onConnected()V

    goto :goto_38

    .line 330
    :cond_2f
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Callback not called"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    const/4 p0, 0x0

    .line 332
    invoke-static {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$402(Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
