.class Lcom/android/server/location/ContextHubService$1;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ContextHubService;

.field final synthetic val$contextHubId:I


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubService;I)V
    .registers 3

    .line 201
    iput-object p1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    iput p2, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHubReset()V
    .registers 6

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 215
    iget-object v1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    iget v2, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-static {v1, v3, v2, v4, v0}, Lcom/android/server/location/ContextHubService;->access$600(Lcom/android/server/location/ContextHubService;III[B)I

    .line 216
    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .registers 6

    .line 204
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/ContextHubService;->access$500(Lcom/android/server/location/ContextHubService;)Lcom/android/server/location/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    .line 205
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    .line 204
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    .line 208
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v2

    iget v3, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    .line 209
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p1

    .line 207
    invoke-static {v1, v2, v3, v0, p1}, Lcom/android/server/location/ContextHubService;->access$600(Lcom/android/server/location/ContextHubService;III[B)I

    .line 210
    return-void
.end method

.method public onNanoAppAborted(JI)V
    .registers 4

    .line 220
    return-void
.end method

.method public onNanoAppDisabled(J)V
    .registers 3

    .line 236
    return-void
.end method

.method public onNanoAppEnabled(J)V
    .registers 3

    .line 232
    return-void
.end method

.method public onNanoAppLoaded(J)V
    .registers 3

    .line 224
    return-void
.end method

.method public onNanoAppUnloaded(J)V
    .registers 3

    .line 228
    return-void
.end method
