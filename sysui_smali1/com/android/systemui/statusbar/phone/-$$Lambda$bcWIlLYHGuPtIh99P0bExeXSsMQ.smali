.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$bcWIlLYHGuPtIh99P0bExeXSsMQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$bcWIlLYHGuPtIh99P0bExeXSsMQ;->f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$bcWIlLYHGuPtIh99P0bExeXSsMQ;->f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setAppearFraction(FF)V

    return-void
.end method
