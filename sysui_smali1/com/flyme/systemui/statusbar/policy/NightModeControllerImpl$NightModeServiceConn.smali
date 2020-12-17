.class Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;
.super Ljava/lang/Object;
.source "NightModeControllerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NightModeServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$1;)V
    .registers 3

    .line 174
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;-><init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 178
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    invoke-static {p2}, Lcom/meizu/flyme/sdkstage/nightmode/INightModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$602(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;)Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;

    .line 179
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$700(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 184
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$602(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;)Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;

    return-void
.end method
