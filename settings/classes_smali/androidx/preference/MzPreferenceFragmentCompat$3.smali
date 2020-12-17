.class Landroidx/preference/MzPreferenceFragmentCompat$3;
.super Ljava/lang/Object;
.source "MzPreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/MzPreferenceFragmentCompat;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/MzPreferenceFragmentCompat;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/preference/MzPreferenceFragmentCompat;Landroidx/preference/Preference;Ljava/lang/String;)V
    .registers 4

    .line 658
    iput-object p1, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->this$0:Landroidx/preference/MzPreferenceFragmentCompat;

    iput-object p2, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->val$preference:Landroidx/preference/Preference;

    iput-object p3, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 661
    iget-object v0, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->this$0:Landroidx/preference/MzPreferenceFragmentCompat;

    iget-object v0, v0, Landroidx/preference/MzPreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 662
    instance-of v1, v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    if-nez v1, :cond_17

    if-nez v0, :cond_f

    return-void

    .line 665
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Adapter must implement PreferencePositionCallback"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 673
    :cond_17
    iget-object v1, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->val$preference:Landroidx/preference/Preference;

    if-eqz v1, :cond_23

    .line 674
    move-object v2, v0

    check-cast v2, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 675
    invoke-interface {v2, v1}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v1

    goto :goto_2c

    .line 677
    :cond_23
    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    .line 678
    invoke-interface {v1, v2}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    :goto_2c
    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    .line 681
    iget-object p0, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->this$0:Landroidx/preference/MzPreferenceFragmentCompat;

    iget-object p0, p0, Landroidx/preference/MzPreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_47

    .line 684
    :cond_37
    new-instance v1, Landroidx/preference/MzPreferenceFragmentCompat$ScrollToPreferenceObserver;

    iget-object v2, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->this$0:Landroidx/preference/MzPreferenceFragmentCompat;

    iget-object v2, v2, Landroidx/preference/MzPreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->val$preference:Landroidx/preference/Preference;

    iget-object p0, p0, Landroidx/preference/MzPreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, p0}, Landroidx/preference/MzPreferenceFragmentCompat$ScrollToPreferenceObserver;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :goto_47
    return-void
.end method
