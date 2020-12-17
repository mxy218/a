.class Lcom/meizu/settings/display/PreviewPagerAdapter$1;
.super Landroid/os/AsyncTask;
.source "PreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/PreviewPagerAdapter;-><init>(Landroid/content/Context;[I[Landroid/content/res/Configuration;IILcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "[",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

.field final synthetic val$configurations:[Landroid/content/res/Configuration;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentFontIndex:I

.field final synthetic val$currentZoomIndex:I

.field final synthetic val$listener:Lcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;

.field final synthetic val$previewSampleResIds:[I


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/PreviewPagerAdapter;[ILandroid/content/Context;[Landroid/content/res/Configuration;Lcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;II)V
    .registers 8

    .line 79
    iput-object p1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    iput-object p2, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$previewSampleResIds:[I

    iput-object p3, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$configurations:[Landroid/content/res/Configuration;

    iput-object p5, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$listener:Lcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;

    iput p6, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$currentZoomIndex:I

    iput p7, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$currentFontIndex:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 79
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->doInBackground([Ljava/lang/Void;)[Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Landroid/widget/FrameLayout;
    .registers 13

    const/4 p1, 0x0

    move v0, p1

    .line 88
    :goto_2
    iget-object v1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$previewSampleResIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_85

    .line 89
    iget-object v1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-static {v1}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$000(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 90
    iget-object v1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-static {v1}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$000(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Landroid/widget/FrameLayout;

    move-result-object v1

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$configurations:[Landroid/content/res/Configuration;

    array-length v2, v1

    move v3, p1

    :goto_2b
    if-ge v3, v2, :cond_81

    aget-object v4, v1, v3

    .line 95
    iget-object v5, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-static {v5}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$100(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, p1

    :goto_37
    if-ge v7, v6, :cond_7e

    aget-object v8, v5, v7

    .line 96
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 99
    iget-object v8, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v8

    .line 100
    iget-object v9, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getThemeResId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->setTheme(I)V

    .line 102
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 103
    iget-object v9, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$previewSampleResIds:[I

    aget v9, v9, v0

    iget-object v10, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    .line 104
    invoke-static {v10}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$000(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Landroid/widget/FrameLayout;

    move-result-object v10

    aget-object v10, v10, v0

    .line 103
    invoke-virtual {v8, v9, v10, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    .line 105
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    const/4 v9, 0x4

    .line 106
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v9, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-static {v9}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$000(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Landroid/widget/FrameLayout;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 111
    :cond_85
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-static {p0}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$000(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 79
    check-cast p1, [Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->onPostExecute([Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onPostExecute([Landroid/widget/FrameLayout;)V
    .registers 6

    .line 116
    iget-object p1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-static {p1}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$000(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$202(Lcom/meizu/settings/display/PreviewPagerAdapter;[Landroid/widget/FrameLayout;)[Landroid/widget/FrameLayout;

    .line 118
    iget-object p1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$listener:Lcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;

    if-eqz p1, :cond_12

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-interface {p1, v0}, Lcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;->inflateViewFinished(Lcom/meizu/settings/display/PreviewPagerAdapter;)V

    :cond_12
    const/4 p1, 0x0

    move v0, p1

    .line 122
    :goto_14
    iget-object v1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$previewSampleResIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    .line 123
    iget-object v1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-static {v1}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$200(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Landroid/widget/FrameLayout;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$currentZoomIndex:I

    iget-object v3, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-static {v3}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$100(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->val$currentFontIndex:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 125
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3d
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2

    .line 83
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 79
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/PreviewPagerAdapter$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
