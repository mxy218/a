.class Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;
.super Ljava/lang/Object;
.source "SmartReplyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartReplyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartSuggestionMeasures"
.end annotation


# instance fields
.field mButtonPaddingHorizontal:I

.field mMaxChildHeight:I

.field mMeasuredWidth:I


# direct methods
.method constructor <init>(III)V
    .registers 5

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 556
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 557
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 558
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    .line 562
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 563
    iput p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 564
    iput p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;
    .registers 4

    .line 568
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    move-result-object p0

    return-object p0
.end method
