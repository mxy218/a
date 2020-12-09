.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->lambda$readFromXml$2(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
