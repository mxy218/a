.class Lcom/android/systemui/stackdivider/DividerHandleView$1;
.super Landroid/util/Property;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerHandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/systemui/stackdivider/DividerHandleView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/stackdivider/DividerHandleView;)Ljava/lang/Integer;
    .registers 2

    .line 44
    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->access$000(Lcom/android/systemui/stackdivider/DividerHandleView;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 40
    check-cast p1, Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView$1;->get(Lcom/android/systemui/stackdivider/DividerHandleView;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/android/systemui/stackdivider/DividerHandleView;Ljava/lang/Integer;)V
    .registers 3

    .line 49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->access$002(Lcom/android/systemui/stackdivider/DividerHandleView;I)I

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 40
    check-cast p1, Lcom/android/systemui/stackdivider/DividerHandleView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerHandleView$1;->set(Lcom/android/systemui/stackdivider/DividerHandleView;Ljava/lang/Integer;)V

    return-void
.end method
