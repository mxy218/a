.class Lcom/android/systemui/egg/MLand$Building;
.super Lcom/android/systemui/egg/MLand$Scenery;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Building"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .registers 3

    .line 1392
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Building;->this$0:Lcom/android/systemui/egg/MLand;

    .line 1393
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/MLand$Scenery;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 1395
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MIN:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MAX:I

    invoke-static {p1, p2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    const/4 p1, 0x0

    .line 1396
    iput p1, p0, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    return-void
.end method
