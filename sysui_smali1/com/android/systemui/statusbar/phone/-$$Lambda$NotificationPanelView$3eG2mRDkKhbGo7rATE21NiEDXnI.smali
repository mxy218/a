.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$3eG2mRDkKhbGo7rATE21NiEDXnI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->lambda$3eG2mRDkKhbGo7rATE21NiEDXnI(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
