.class Lcom/flyme/systemui/smarttouch/SmartTouchService$1;
.super Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;
.source "SmartTouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchService;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchService;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchService$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchService;

    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public forceHideSmartTouch(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchService$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchService;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceHideSmartTouch == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmartTouch"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onForceHide(Z)V

    return-void
.end method
