.class Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
.super Ljava/lang/Object;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FindPhoneMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkInfo"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public parentName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "parentName"  # Ljava/lang/String;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p2, p0, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->name:Ljava/lang/String;

    .line 511
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->parentName:Ljava/lang/String;

    .line 512
    iput-object p3, p0, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    .line 513
    return-void
.end method
