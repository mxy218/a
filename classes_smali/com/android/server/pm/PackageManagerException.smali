.class public Lcom/android/server/pm/PackageManagerException;
.super Ljava/lang/Exception;
.source "PackageManagerException.java"


# instance fields
.field public final error:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 39
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    const/16 p1, -0x6e

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 45
    const/16 p1, -0x6e

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 46
    return-void
.end method

.method public static from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    iget v1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/Installer$InstallerException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const/16 v2, -0x6e

    invoke-direct {v0, v2, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
