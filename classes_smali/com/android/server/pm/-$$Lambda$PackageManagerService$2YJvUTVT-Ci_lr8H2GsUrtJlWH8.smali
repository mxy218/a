.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$2YJvUTVT-Ci_lr8H2GsUrtJlWH8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$2YJvUTVT-Ci_lr8H2GsUrtJlWH8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$2YJvUTVT-Ci_lr8H2GsUrtJlWH8;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$2YJvUTVT-Ci_lr8H2GsUrtJlWH8;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$2YJvUTVT-Ci_lr8H2GsUrtJlWH8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$2YJvUTVT-Ci_lr8H2GsUrtJlWH8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/content/pm/ProviderInfo;

    check-cast p2, Landroid/content/pm/ProviderInfo;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$static$9(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I

    move-result p1

    return p1
.end method
