.class public final synthetic Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->lambda$installApksInSession$9(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p1

    return p1
.end method
