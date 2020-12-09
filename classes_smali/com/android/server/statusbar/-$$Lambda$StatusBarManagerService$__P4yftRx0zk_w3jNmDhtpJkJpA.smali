.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$__P4yftRx0zk_w3jNmDhtpJkJpA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$__P4yftRx0zk_w3jNmDhtpJkJpA;->f$0:Z

    iput-object p2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$__P4yftRx0zk_w3jNmDhtpJkJpA;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$__P4yftRx0zk_w3jNmDhtpJkJpA;->f$0:Z

    iget-object v1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$__P4yftRx0zk_w3jNmDhtpJkJpA;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$reboot$6(ZLjava/lang/String;)V

    return-void
.end method
