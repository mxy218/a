.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$CnD6O2AhxKYYNnRm_LJG-t5IpnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$CnD6O2AhxKYYNnRm_LJG-t5IpnM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$CnD6O2AhxKYYNnRm_LJG-t5IpnM;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$CnD6O2AhxKYYNnRm_LJG-t5IpnM;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$CnD6O2AhxKYYNnRm_LJG-t5IpnM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$CnD6O2AhxKYYNnRm_LJG-t5IpnM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent;->lambda$notifyLocationInParentDisplayChanged$26(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
