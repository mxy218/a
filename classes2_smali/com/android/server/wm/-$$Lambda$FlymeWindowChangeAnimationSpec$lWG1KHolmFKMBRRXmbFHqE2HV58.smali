.class public final synthetic Lcom/android/server/wm/-$$Lambda$FlymeWindowChangeAnimationSpec$lWG1KHolmFKMBRRXmbFHqE2HV58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeWindowChangeAnimationSpec$lWG1KHolmFKMBRRXmbFHqE2HV58;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$FlymeWindowChangeAnimationSpec$lWG1KHolmFKMBRRXmbFHqE2HV58;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$FlymeWindowChangeAnimationSpec$lWG1KHolmFKMBRRXmbFHqE2HV58;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$FlymeWindowChangeAnimationSpec$lWG1KHolmFKMBRRXmbFHqE2HV58;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeWindowChangeAnimationSpec$lWG1KHolmFKMBRRXmbFHqE2HV58;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;->lambda$new$0()Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;

    move-result-object v0

    return-object v0
.end method
