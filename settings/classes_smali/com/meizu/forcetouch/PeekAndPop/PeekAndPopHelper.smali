.class public Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper;
.super Ljava/lang/Object;
.source "PeekAndPopHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;,
        Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;,
        Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;
    }
.end annotation


# static fields
.field private static mPeekAndPopLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static enablePeekAndPop(Landroid/view/View;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;)V
    .registers 11

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.forcetouch"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 170
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 172
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_28

    :cond_27
    move-object v0, v2

    :goto_28
    if-nez v0, :cond_2b

    return-void

    .line 177
    :cond_2b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3a

    .line 181
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_38
    move v3, v4

    goto :goto_53

    :cond_3a
    :goto_3a
    if-ge v3, v1, :cond_51

    .line 185
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1020002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_4e

    .line 187
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_53

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_51
    move-object v1, v2

    goto :goto_38

    :goto_53
    if-nez v1, :cond_5d

    const-string p0, "PP"

    const-string p1, "child is null "

    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_5d
    instance-of v6, v1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    if-nez v6, :cond_96

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 201
    iget v6, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    if-eqz v6, :cond_78

    if-eq v6, v5, :cond_6e

    const/4 v5, 0x2

    if-eq v6, v5, :cond_6e

    goto :goto_81

    .line 209
    :cond_6e
    new-instance v2, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;-><init>(Landroid/content/Context;)V

    goto :goto_81

    .line 205
    :cond_78
    new-instance v2, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;-><init>(Landroid/content/Context;)V

    .line 212
    :goto_81
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eq v3, v4, :cond_8a

    .line 214
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_8d

    .line 216
    :cond_8a
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 219
    :goto_8d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper;->mPeekAndPopLayout:Ljava/lang/ref/WeakReference;

    move-object v1, v2

    goto :goto_a0

    .line 221
    :cond_96
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v2, v1

    check-cast v2, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper;->mPeekAndPopLayout:Ljava/lang/ref/WeakReference;

    .line 223
    :goto_a0
    check-cast v1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-virtual {v1, p0, p1, p2}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->setPeekAndPopListener(Landroid/view/View;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;)V

    return-void
.end method
