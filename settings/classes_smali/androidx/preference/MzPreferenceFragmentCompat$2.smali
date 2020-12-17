.class Landroidx/preference/MzPreferenceFragmentCompat$2;
.super Ljava/lang/Object;
.source "MzPreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/MzPreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/MzPreferenceFragmentCompat;


# direct methods
.method constructor <init>(Landroidx/preference/MzPreferenceFragmentCompat;)V
    .registers 2

    .line 135
    iput-object p1, p0, Landroidx/preference/MzPreferenceFragmentCompat$2;->this$0:Landroidx/preference/MzPreferenceFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 138
    iget-object p0, p0, Landroidx/preference/MzPreferenceFragmentCompat$2;->this$0:Landroidx/preference/MzPreferenceFragmentCompat;

    iget-object p0, p0, Landroidx/preference/MzPreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
