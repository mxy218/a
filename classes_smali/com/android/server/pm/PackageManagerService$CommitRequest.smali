.class Lcom/android/server/pm/PackageManagerService$CommitRequest;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommitRequest"
.end annotation


# instance fields
.field final mAllUsers:[I

.field final reconciledPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$ReconciledPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$ReconciledPackage;",
            ">;[I)V"
        }
    .end annotation

    .line 16464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16465
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$CommitRequest;->reconciledPackages:Ljava/util/Map;

    .line 16466
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$CommitRequest;->mAllUsers:[I

    .line 16467
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;[ILcom/android/server/pm/PackageManagerService$1;)V
    .registers 4

    .line 16460
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$CommitRequest;-><init>(Ljava/util/Map;[I)V

    return-void
.end method