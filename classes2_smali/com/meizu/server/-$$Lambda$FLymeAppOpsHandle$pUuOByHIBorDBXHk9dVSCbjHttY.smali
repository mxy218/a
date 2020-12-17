.class public final synthetic Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/meizu/server/FLymeAppOpsHandle;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;

.field private final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/meizu/server/FLymeAppOpsHandle;IILcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$0:Lcom/meizu/server/FLymeAppOpsHandle;

    iput p2, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$1:I

    iput p3, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$2:I

    iput-object p4, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$3:Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;

    iput-object p5, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$0:Lcom/meizu/server/FLymeAppOpsHandle;

    iget v1, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$1:I

    iget v2, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$2:I

    iget-object v3, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$3:Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;

    iget-object v4, p0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/server/FLymeAppOpsHandle;->lambda$askOperationLocked$1$FLymeAppOpsHandle(IILcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;Ljava/lang/String;)V

    return-void
.end method
