.class public final synthetic Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$vwLkmK-74Xx2ogy0FzL5jWCZsjk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field private final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$vwLkmK-74Xx2ogy0FzL5jWCZsjk;->f$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iput-object p2, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$vwLkmK-74Xx2ogy0FzL5jWCZsjk;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iput p3, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$vwLkmK-74Xx2ogy0FzL5jWCZsjk;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$vwLkmK-74Xx2ogy0FzL5jWCZsjk;->f$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iget-object v1, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$vwLkmK-74Xx2ogy0FzL5jWCZsjk;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$vwLkmK-74Xx2ogy0FzL5jWCZsjk;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$requestHighlight$0$HighlightablePreferenceGroupAdapter(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
