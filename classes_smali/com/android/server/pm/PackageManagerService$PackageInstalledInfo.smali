.class Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInstalledInfo"
.end annotation


# instance fields
.field addedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field installerPackageName:Ljava/lang/String;

.field name:Ljava/lang/String;

.field newUsers:[I

.field origPackage:Ljava/lang/String;

.field origPermission:Ljava/lang/String;

.field origUsers:[I

.field pkg:Landroid/content/pm/PackageParser$Package;

.field removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

.field returnCode:I

.field returnMsg:Ljava/lang/String;

.field uid:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setReturnMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "returnMsg"  # Ljava/lang/String;

    .line 16785
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 16786
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 16787
    .local v0, "childCount":I
    :goto_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 16788
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput-object p1, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 16787
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 16790
    .end local v1  # "i":I
    :cond_1c
    return-void
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"  # I
    .param p2, "msg"  # Ljava/lang/String;

    .line 16751
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 16752
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 16753
    const-string v0, "PackageManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16754
    return-void
.end method

.method public setError(Ljava/lang/String;Landroid/content/pm/PackageParser$PackageParserException;)V
    .registers 6
    .param p1, "msg"  # Ljava/lang/String;
    .param p2, "e"  # Landroid/content/pm/PackageParser$PackageParserException;

    .line 16757
    iget v0, p2, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 16758
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 16759
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 16760
    .local v0, "childCount":I
    :goto_16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_27

    .line 16761
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setError(Ljava/lang/String;Landroid/content/pm/PackageParser$PackageParserException;)V

    .line 16760
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 16763
    .end local v1  # "i":I
    :cond_27
    const-string v1, "PackageManager"

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16764
    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .registers 6
    .param p1, "msg"  # Ljava/lang/String;
    .param p2, "e"  # Lcom/android/server/pm/PackageManagerException;

    .line 16767
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 16768
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 16769
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 16770
    .local v0, "childCount":I
    :goto_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_26

    .line 16771
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 16770
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 16773
    .end local v1  # "i":I
    :cond_26
    const-string v1, "PackageManager"

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16774
    return-void
.end method

.method public setReturnCode(I)V
    .registers 5
    .param p1, "returnCode"  # I

    .line 16777
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 16778
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 16779
    .local v0, "childCount":I
    :goto_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 16780
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput p1, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 16779
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 16782
    .end local v1  # "i":I
    :cond_1c
    return-void
.end method
