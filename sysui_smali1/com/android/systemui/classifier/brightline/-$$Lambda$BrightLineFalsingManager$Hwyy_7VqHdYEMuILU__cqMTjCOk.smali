.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$Hwyy_7VqHdYEMuILU__cqMTjCOk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$Hwyy_7VqHdYEMuILU__cqMTjCOk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$Hwyy_7VqHdYEMuILU__cqMTjCOk;

    invoke-direct {v0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$Hwyy_7VqHdYEMuILU__cqMTjCOk;-><init>()V

    sput-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$Hwyy_7VqHdYEMuILU__cqMTjCOk;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$Hwyy_7VqHdYEMuILU__cqMTjCOk;

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

    check-cast p1, Lcom/android/systemui/classifier/brightline/FalsingClassifier;

    invoke-static {p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$isFalseTouch$1(Lcom/android/systemui/classifier/brightline/FalsingClassifier;)Z

    move-result p0

    return p0
.end method
