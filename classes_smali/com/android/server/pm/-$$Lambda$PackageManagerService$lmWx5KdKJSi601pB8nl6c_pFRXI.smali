.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I

.field private final synthetic f$3:[Ljava/lang/String;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;ZI[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$1:Z

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$5:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$1:Z

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$3:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$lmWx5KdKJSi601pB8nl6c_pFRXI;->f$5:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->lambda$sendMyPackageSuspendedOrUnsuspended$12$PackageManagerService(ZI[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
