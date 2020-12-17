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
    .param p1, "error"  # I

    .line 17926
    const-string v0, "Failed to prepare for install."

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 17927
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "error"  # I
    .param p2, "detailMessage"  # Ljava/lang/String;

    .line 17930
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 17931
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .param p1, "message"  # Ljava/lang/String;
    .param p2, "e"  # Ljava/lang/Exception;

    .line 17934
    instance-of v0, p2, Landroid/content/pm/PackageParser$PackageParserException;

    if-eqz v0, :cond_a

    .line 17935
    move-object v0, p2

    check-cast v0, Landroid/content/pm/PackageParser$PackageParserException;

    iget v0, v0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    goto :goto_f

    .line 17936
    :cond_a
    move-object v0, p2

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 17937
    :goto_f
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 17934
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 17938
    return-void
.end method


# virtual methods
.method conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PrepareFailure;
    .registers 3
    .param p1, "conflictingPermission"  # Ljava/lang/String;
    .param p2, "conflictingPackage"  # Ljava/lang/String;

    .line 17942
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PrepareFailure;->conflictingPermission:Ljava/lang/String;

    .line 17943
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PrepareFailure;->conflictingPackage:Ljava/lang/String;

    .line 17944
    return-object p0
.end method
