.class Lflyme/support/v7/widget/RecyclerFastScrollLetter$ScrollListener;
.super Lflyme/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerFastScrollLetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerFastScrollLetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerFastScrollLetter;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/RecyclerFastScrollLetter;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerFastScrollLetter$ScrollListener;->this$0:Lflyme/support/v7/widget/RecyclerFastScrollLetter;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/RecyclerFastScrollLetter;Lflyme/support/v7/widget/RecyclerFastScrollLetter$1;)V
    .registers 3

    .line 590
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerFastScrollLetter$ScrollListener;-><init>(Lflyme/support/v7/widget/RecyclerFastScrollLetter;)V

    return-void
.end method
