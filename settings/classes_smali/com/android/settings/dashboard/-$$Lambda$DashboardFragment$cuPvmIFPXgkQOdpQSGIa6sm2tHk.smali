.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cuPvmIFPXgkQOdpQSGIa6sm2tHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cuPvmIFPXgkQOdpQSGIa6sm2tHk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cuPvmIFPXgkQOdpQSGIa6sm2tHk;

    invoke-direct {v0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cuPvmIFPXgkQOdpQSGIa6sm2tHk;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cuPvmIFPXgkQOdpQSGIa6sm2tHk;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cuPvmIFPXgkQOdpQSGIa6sm2tHk;

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

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$checkUiBlocker$2(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method
