.class final Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageManagerHelper"
.end annotation


# static fields
.field private static final TAB1:Ljava/lang/String; = "    "

.field private static final TAB2:Ljava/lang/String; = "        "


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    .line 1029
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1030
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1031
    return-void
.end method


# virtual methods
.method public cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V
    .registers 6

    .line 1085
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1086
    if-nez v0, :cond_14

    .line 1087
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1088
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1090
    :cond_14
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 8

    .line 1112
    const-string v0, "PackageInfo cache"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->isVerbose()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_46

    .line 1115
    nop

    .line 1116
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 1117
    move v1, v0

    :goto_14
    if-ge v0, p2, :cond_2c

    .line 1118
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1119
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1121
    :cond_2c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package(s)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    return-void

    .line 1125
    :cond_46
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_54

    .line 1126
    const-string p2, "    <empty>"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1130
    :cond_54
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 1131
    nop

    :goto_5b
    if-ge v0, p2, :cond_bd

    .line 1132
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1135
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    goto :goto_87

    .line 1131
    :cond_ba
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 1139
    :cond_bd
    return-void
.end method

.method public forgetAllPackageInfos(I)V
    .registers 3

    .line 1105
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1106
    return-void
.end method

.method public forgetPackageInfo(Ljava/lang/String;I)V
    .registers 4

    .line 1094
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1095
    if-nez v0, :cond_b

    .line 1096
    return-void

    .line 1098
    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1100
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 1102
    :cond_19
    return-void
.end method

.method public getCachedPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 1079
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 1080
    if-nez p2, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    :goto_12
    return-object p1
.end method

.method public getOverlayPackages(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getOverlayPackages(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 1055
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 1035
    if-eqz p3, :cond_9

    .line 1036
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getCachedPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1037
    if-eqz v0, :cond_9

    .line 1038
    return-object v0

    .line 1042
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1043
    if-eqz p3, :cond_17

    if-eqz v0, :cond_17

    .line 1044
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 1046
    :cond_17
    return-object v0

    .line 1047
    :catch_18
    move-exception p1

    .line 1050
    const/4 p1, 0x0

    return-object p1
.end method

.method public signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 1064
    const/4 p3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_b

    if-nez p1, :cond_a

    const/4 p3, 0x1

    :cond_a
    return p3

    .line 1066
    :catch_b
    move-exception p1

    .line 1069
    return p3
.end method
