.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$-SnpFjXg0evvwd5NWvIx70G2rfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/ProximitySensor$ProximityEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$-SnpFjXg0evvwd5NWvIx70G2rfg;->f$0:Lcom/android/systemui/util/ProximitySensor$ProximityEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$-SnpFjXg0evvwd5NWvIx70G2rfg;->f$0:Lcom/android/systemui/util/ProximitySensor$ProximityEvent;

    check-cast p1, Lcom/android/systemui/classifier/brightline/FalsingClassifier;

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$onProximityEvent$3(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V

    return-void
.end method
