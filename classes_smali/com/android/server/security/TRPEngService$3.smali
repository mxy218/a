.class Lcom/android/server/security/TRPEngService$3;
.super Ljava/lang/Object;
.source "TRPEngService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/security/TRPEngService;->handleShareUid(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/TRPEngService;

.field final synthetic val$info:Landroid/app/ActivityManager$RunningAppProcessInfo;


# direct methods
.method constructor <init>(Lcom/android/server/security/TRPEngService;Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/security/TRPEngService;

    .line 543
    iput-object p1, p0, Lcom/android/server/security/TRPEngService$3;->this$0:Lcom/android/server/security/TRPEngService;

    iput-object p2, p0, Lcom/android/server/security/TRPEngService$3;->val$info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleShareUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/TRPEngService$3;->val$info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/server/security/TRPEngService$3;->this$0:Lcom/android/server/security/TRPEngService;

    iget-object v1, p0, Lcom/android/server/security/TRPEngService$3;->val$info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/security/TRPEngService$3;->val$info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/security/TRPEngService;->access$400(Lcom/android/server/security/TRPEngService;Ljava/lang/String;[Ljava/lang/String;)V

    .line 548
    return-void
.end method
