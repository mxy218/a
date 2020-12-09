.class Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiPackageInstallParams"
.end annotation


# instance fields
.field private final mChildParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageManagerService$InstallParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/pm/PackageManagerService$InstallArgs;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRet:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 15091
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15092
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15082
    const/4 p2, 0x1

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mRet:I

    .line 15093
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_43

    .line 15096
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    .line 15097
    const/4 p2, 0x0

    :goto_1a
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_35

    .line 15098
    new-instance v0, Lcom/android/server/pm/PackageManagerService$InstallParams;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V

    .line 15099
    iput-object p0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    .line 15100
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15097
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 15102
    :cond_35
    new-instance p1, Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    .line 15103
    return-void

    .line 15094
    :cond_43
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string p2, "No child sessions found!"

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method handleReturnCode()V
    .registers 5

    .line 15117
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 15118
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 15119
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    .line 15120
    iget v1, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mRet:I

    .line 15122
    :cond_1e
    goto :goto_6

    .line 15123
    :cond_1f
    return-void
.end method

.method handleStartCopy()V
    .registers 5

    .line 15107
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 15108
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleStartCopy()V

    .line 15109
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    .line 15110
    iget v1, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mRet:I

    .line 15112
    :cond_1e
    goto :goto_6

    .line 15113
    :cond_1f
    return-void
.end method

.method tryProcessInstallRequest(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .registers 9

    .line 15126
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15127
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_18

    .line 15128
    return-void

    .line 15130
    :cond_18
    nop

    .line 15131
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 15132
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_37

    .line 15133
    return-void

    .line 15134
    :cond_37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_42

    .line 15135
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 15136
    goto :goto_44

    .line 15138
    :cond_42
    goto :goto_23

    .line 15131
    :cond_43
    move p1, v0

    .line 15139
    :goto_44
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15140
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 15141
    new-instance v3, Lcom/android/server/pm/PackageManagerService$InstallRequest;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15142
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;I)Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/android/server/pm/PackageManagerService$InstallRequest;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$1;)V

    .line 15141
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15143
    goto :goto_59

    .line 15144
    :cond_7b
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    if-ne p1, v0, :cond_80

    goto :goto_81

    :cond_80
    const/4 v0, 0x0

    :goto_81
    invoke-static {v1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;ZLjava/util/List;)V

    .line 15147
    return-void
.end method
