.class Lcom/android/server/pm/PackageManagerService$SystemDeleteException;
.super Ljava/lang/Exception;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemDeleteException"
.end annotation


# instance fields
.field public final reason:Lcom/android/server/pm/PackageManagerException;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerException;)V
    .registers 2

    .line 19608
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19609
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SystemDeleteException;->reason:Lcom/android/server/pm/PackageManagerException;

    .line 19610
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerException;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3

    .line 19605
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$SystemDeleteException;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method
