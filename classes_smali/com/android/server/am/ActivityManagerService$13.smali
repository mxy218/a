.class Lcom/android/server/am/ActivityManagerService$13;
.super Lcom/android/server/am/ActivityManagerService$ImportanceToken;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 5667
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$ImportanceToken;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 5670
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->importanceTokenDied(Lcom/android/server/am/ActivityManagerService$ImportanceToken;)V

    .line 5671
    return-void
.end method