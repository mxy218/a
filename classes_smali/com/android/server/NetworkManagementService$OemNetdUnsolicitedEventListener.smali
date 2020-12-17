.class Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;
.super Landroid/net/IOemNetdUnsolicitedEventListener$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemNetdUnsolicitedEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 829
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/IOemNetdUnsolicitedEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"  # Lcom/android/server/NetworkManagementService$1;

    .line 829
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .registers 3

    .line 846
    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "oemNetd getInterfaceVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x1

    return v0
.end method

.method public onAppNetworkPolicyRequested(I)I
    .registers 5
    .param p1, "uid"  # I

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "oemNetd onAppNetworkPolicyRequested,uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 838
    const-string/jumbo v0, "oemNetd onAppNetworkPolicyRequested,uid in white list,ignore!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v0, -0x1

    return v0

    .line 841
    :cond_3b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$OemNetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v0, p1}, Lcom/android/server/NetworkManagementService;->notifyAppNetworkPolicyRequested(I)I

    move-result v0

    .line 842
    .local v0, "netdIndex":I
    return v0
.end method

.method public onRegistered()V
    .registers 3

    .line 832
    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "oemNetd onRegistered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void
.end method
