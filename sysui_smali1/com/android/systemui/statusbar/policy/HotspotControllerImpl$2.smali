.class Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->setHotspotEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .registers 3

    .line 180
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "HotspotController"

    const-string v1, "onTetheringFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method
