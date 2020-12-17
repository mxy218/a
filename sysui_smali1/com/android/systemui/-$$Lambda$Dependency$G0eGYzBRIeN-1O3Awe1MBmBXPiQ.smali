.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;

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

    invoke-static {p1}, Lcom/android/systemui/Dependency;->lambda$onConfigurationChanged$2(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
