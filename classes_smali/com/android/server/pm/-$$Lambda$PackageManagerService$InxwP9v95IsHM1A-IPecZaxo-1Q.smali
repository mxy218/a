.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$InxwP9v95IsHM1A-IPecZaxo-1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$InxwP9v95IsHM1A-IPecZaxo-1Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InxwP9v95IsHM1A-IPecZaxo-1Q;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InxwP9v95IsHM1A-IPecZaxo-1Q;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InxwP9v95IsHM1A-IPecZaxo-1Q;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$InxwP9v95IsHM1A-IPecZaxo-1Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$deleteTempPackageFiles$16(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
