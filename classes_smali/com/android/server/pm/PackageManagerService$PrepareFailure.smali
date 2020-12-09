.class Lcom/android/server/pm/PackageManagerService$PrepareFailure;
.super Lcom/android/server/pm/PackageManagerException;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareFailure"
.end annotation


# instance fields
.field public conflictingPackage:Ljava/lang/String;

.field public conflictingPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 17349
    const-string v0, "Failed to prepare for install."

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 17350
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 17353
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 17354
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 17357
    instance-of v0, p2, Landroid/content/pm/PackageParser$PackageParserException;

    if-eqz v0, :cond_a

    .line 17358
    move-object v0, p2

    check-cast v0, Landroid/content/pm/PackageParser$PackageParserException;

    iget v0, v0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    goto :goto_f

    .line 17359
    :cond_a
    move-object v0, p2

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 17360
    :goto_f
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 17357
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 17361
    return-void
.end method


# virtual methods
.method conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PrepareFailure;
    .registers 3

    .line 17365
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PrepareFailure;->conflictingPermission:Ljava/lang/String;

    .line 17366
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PrepareFailure;->conflictingPackage:Ljava/lang/String;

    .line 17367
    return-object p0
.end method
