.class Lcom/android/server/pm/PackageManagerService$PmTimeTask;
.super Ljava/util/TimerTask;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PmTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/pm/PackageManagerService;

    .line 26628
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PmTimeTask;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 26631
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmTimeTask;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$9500(Lcom/android/server/pm/PackageManagerService;)V

    .line 26632
    return-void
.end method
