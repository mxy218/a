.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/DividerView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iput p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iget p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerView;->lambda$onRecentsDrawn$3$DividerView(I)V

    return-void
.end method
