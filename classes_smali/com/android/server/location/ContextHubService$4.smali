.class Lcom/android/server/location/ContextHubService$4;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubService;->createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
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

    .line 341
    iput-object p1, p0, Lcom/android/server/location/ContextHubService$4;->this$0:Lcom/android/server/location/ContextHubService;

    iput p2, p0, Lcom/android/server/location/ContextHubService$4;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 348
    const/4 p2, 0x1

    new-array p2, p2, [B

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p2, v0

    .line 349
    iget-object p1, p0, Lcom/android/server/location/ContextHubService$4;->this$0:Lcom/android/server/location/ContextHubService;

    iget v0, p0, Lcom/android/server/location/ContextHubService$4;->val$contextHubId:I

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-static {p1, v1, v0, v2, p2}, Lcom/android/server/location/ContextHubService;->access$600(Lcom/android/server/location/ContextHubService;III[B)I

    .line 350
    return-void
.end method

.method public onTransactionComplete(I)V
    .registers 2

    .line 344
    return-void
.end method
