.class Lflyme/support/v7/app/FlymeAlertController;
.super Lflyme/support/v7/app/AlertController;
.source "FlymeAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/FlymeAlertController$PaddingRule;,
        Lflyme/support/v7/app/FlymeAlertController$CheckedItemAdapter;,
        Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;,
        Lflyme/support/v7/app/FlymeAlertController$ViewHolder;,
        Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;,
        Lflyme/support/v7/app/FlymeAlertController$RecycleListView;,
        Lflyme/support/v7/app/FlymeAlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static sActionListPaddingRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/app/FlymeAlertController$PaddingRule;",
            ">;"
        }
    .end annotation
.end field

.field private static sCustomViewRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/app/FlymeAlertController$PaddingRule;",
            ">;"
        }
    .end annotation
.end field

.field private static sListPaddingRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/app/FlymeAlertController$PaddingRule;",
            ">;"
        }
    .end annotation
.end field

.field private static sPaddingRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/app/FlymeAlertController$PaddingRule;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingleActionPaddingRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/app/FlymeAlertController$PaddingRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionDialog:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAlertDialogWidth:I

.field private mAutoShowSoftInput:Z

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private final mButtonIconDimen:I

.field mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCenterListItemLayout:I

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomPaddingRule:Z

.field private mCustomTitleView:Landroid/view/View;

.field private mDensityRatio:F

.field final mDialog:Lflyme/support/v7/app/AppCompatDialog;

.field private mGravity:I

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMaxHeight:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field private mPaddingSpace1:I

.field private mPaddingSpace2:I

.field private mPaddingSpace3:I

.field private mPaddingSpace4:I

.field mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    .line 1281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    .line 1282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    .line 1283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    .line 1291
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x7

    const/16 v3, 0x18

    const/16 v4, 0xe

    const/16 v5, 0xc

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1292
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x3

    const/16 v5, 0x18

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1293
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x5

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/16 v5, 0x18

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1296
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x4

    const/16 v5, 0xa

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1300
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x7

    const/16 v3, 0x18

    const/16 v4, 0xe

    const/16 v5, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x3

    const/16 v5, 0x18

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x5

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1303
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x4

    const/16 v5, 0xa

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x7

    const/16 v3, 0x18

    const/16 v4, 0xc

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1310
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x5

    const/16 v4, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x1

    const/16 v4, 0x18

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x4

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1318
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x7

    const/16 v3, 0x18

    const/16 v4, 0xc

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x5

    const/16 v4, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1321
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x1

    const/16 v4, 0x18

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x7

    const/16 v3, 0x18

    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1329
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x5

    const/16 v4, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1330
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x1

    const/16 v4, 0x18

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x2

    const/16 v4, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    sget-object v0, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    new-instance v7, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lflyme/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .registers 8

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/app/AlertController;-><init>(Landroid/content/Context;Lflyme/support/v7/app/AppCompatDialog;Landroid/view/Window;)V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingSpecified:Z

    .line 77
    iput v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconId:I

    const/4 v1, -0x1

    .line 87
    iput v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mCheckedItem:I

    .line 98
    iput v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mAutoShowSoftInput:Z

    .line 119
    new-instance v2, Lflyme/support/v7/app/FlymeAlertController$1;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/FlymeAlertController$1;-><init>(Lflyme/support/v7/app/FlymeAlertController;)V

    iput-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 176
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mDialog:Lflyme/support/v7/app/AppCompatDialog;

    .line 178
    iput-object p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    .line 179
    new-instance p3, Lflyme/support/v7/app/FlymeAlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lflyme/support/v7/app/FlymeAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mHandler:Landroid/os/Handler;

    .line 181
    sget-object p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v2, Lflyme/support/v7/appcompat/R$attr;->alertDialogStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p3, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 183
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogLayout:I

    .line 184
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPanelSideLayout:I

    .line 186
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mListLayout:I

    .line 187
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mMultiChoiceItemLayout:I

    .line 188
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mSingleChoiceItemLayout:I

    .line 189
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mListItemLayout:I

    .line 191
    iput-boolean v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mShowTitle:Z

    .line 192
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_mzButtonIconDimen:I

    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42400000  # 48.0f

    invoke-static {v2, v3}, Lflyme/support/v7/app/FlymeAlertController;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonIconDimen:I

    .line 194
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_centerListItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mCenterListItemLayout:I

    .line 195
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_mzActionDialog:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mActionDialog:Z

    .line 196
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_mzDialogCustomPadding:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mCustomPaddingRule:Z

    .line 197
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_mzDialogSpace1:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace1:I

    .line 198
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_mzDialogSpace2:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace2:I

    .line 199
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_mzDialogSpace3:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace3:I

    .line 200
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_mzDialogSpace4:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace4:I

    .line 201
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-virtual {p2, v1}, Lflyme/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 206
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 207
    invoke-direct {p0}, Lflyme/support/v7/app/FlymeAlertController;->getScreenWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogWidth:I

    .line 208
    iget p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogWidth:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mDensityRatio:F

    return-void
.end method

.method static synthetic access$200(Lflyme/support/v7/app/FlymeAlertController;)I
    .registers 1

    .line 40
    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mCenterListItemLayout:I

    return p0
.end method

.method static synthetic access$500(Landroid/content/Context;F)I
    .registers 2

    .line 40
    invoke-static {p0, p1}, Lflyme/support/v7/app/FlymeAlertController;->dp2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method private applyHorizontalButtonStyle(Landroid/widget/Button;I)V
    .registers 5

    if-eqz p1, :cond_30

    .line 1432
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_30

    .line 1435
    :cond_9
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 1436
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1437
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_horizontal_button_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1438
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, p0, p2, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1439
    sget p0, Lflyme/support/v7/appcompat/R$drawable;->mz_alert_dialog_button_bg_radius:I

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_30
    :goto_30
    return-void
.end method

.method private applyMessageTextAppearance(Landroid/widget/TextView;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010034

    aput v2, v0, v1

    .line 1589
    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    sget v3, Lflyme/support/v7/appcompat/R$attr;->mzDialogMessageStyle:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1590
    sget v2, Lflyme/support/v7/appcompat/R$style;->DialogWindowContent_Flyme_Light:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1591
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1592
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method private applyTitleTextAppearance(Landroid/widget/TextView;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010034

    aput v2, v0, v1

    .line 1581
    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x101005b

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1582
    sget v2, Lflyme/support/v7/appcompat/R$style;->DialogWindowTitle_Flyme_Light:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1583
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1584
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method private applyVerticalButtonStyle(Landroid/widget/Button;)V
    .registers 4

    if-eqz p1, :cond_25

    .line 1419
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_25

    .line 1422
    :cond_9
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 1423
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1424
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_vertical_button_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1425
    sget p0, Lflyme/support/v7/appcompat/R$drawable;->mz_alert_dialog_button_bg_rectange:I

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method private calcButtonLayoutPadding()I
    .registers 6

    .line 1449
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 1450
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v3}, Lflyme/support/v7/app/FlymeAlertController;->getTextWidth(Landroid/widget/TextView;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    .line 1454
    :goto_18
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2d

    .line 1455
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lflyme/support/v7/app/FlymeAlertController;->getTextWidth(Landroid/widget/TextView;Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    .line 1459
    :cond_2d
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v3, :cond_42

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_42

    .line 1460
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lflyme/support/v7/app/FlymeAlertController;->getTextWidth(Landroid/widget/TextView;Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    .line 1465
    :cond_42
    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogWidth:I

    sub-int/2addr p0, v1

    add-int/2addr v0, v2

    .line 1466
    div-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 5

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 216
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 220
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    .line 221
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_14
    if-lez v0, :cond_23

    add-int/lit8 v0, v0, -0x1

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 225
    invoke-static {v3}, Lflyme/support/v7/app/FlymeAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v1

    :cond_23
    return v2
.end method

.method private static dp2px(Landroid/content/Context;F)I
    .registers 8

    :try_start_0
    const-string p0, "android.os.SystemProperties"

    .line 1665
    invoke-static {p0}, Lcom/meizu/common/util/ReflectUtils;->from(Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object p0

    const-string v0, "getInt"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {p0, v0, v2}, Lcom/meizu/common/util/ReflectUtils$IReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectMethod;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "ro.sf.lcd_density"

    aput-object v2, v0, v4

    const/16 v2, 0x1e0

    .line 1666
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0}, Lcom/meizu/common/util/ReflectUtils$IReflectMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "persist.sys.density"

    aput-object v3, v1, v4

    .line 1667
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-interface {p0, v2, v1}, Lcom/meizu/common/util/ReflectUtils$IReflectMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_4d

    int-to-float p0, p0

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p0, v0

    goto :goto_4f

    :catch_4d
    const/high16 p0, 0x40400000  # 3.0f

    :goto_4f
    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private findEditText(Landroid/view/View;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1600
    :cond_4
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_9

    return-object p1

    .line 1604
    :cond_9
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_24

    .line 1605
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 1606
    :goto_10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1607
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1609
    invoke-direct {p0, v2}, Lflyme/support/v7/app/FlymeAlertController;->findEditText(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_21

    return-object v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    return-object v0
.end method

.method private getScreenHeight()I
    .registers 3

    .line 1643
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_19

    .line 1645
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0

    .line 1647
    :cond_19
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1648
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1649
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private getScreenWidth()I
    .registers 3

    .line 1653
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_19

    .line 1655
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0

    .line 1657
    :cond_19
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1658
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1659
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private getTextWidth(Landroid/widget/TextView;Ljava/lang/CharSequence;)I
    .registers 7

    .line 1471
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1473
    invoke-interface {p0, p2, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 1475
    :cond_a
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1477
    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_17
    if-ge v0, p2, :cond_2b

    aget-object v2, p0, v0

    .line 1478
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2b
    return v1
.end method

.method private isButtonLayoutVertical()Z
    .registers 8

    .line 1375
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_button_max_text_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1379
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_26

    .line 1380
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v4}, Lflyme/support/v7/app/FlymeAlertController;->getTextWidth(Landroid/widget/TextView;Ljava/lang/CharSequence;)I

    move-result v1

    if-le v1, v0, :cond_23

    return v3

    :cond_23
    add-int/2addr v1, v2

    move v4, v3

    goto :goto_28

    :cond_26
    move v1, v2

    move v4, v1

    .line 1387
    :goto_28
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v5, :cond_40

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_40

    .line 1388
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-direct {p0, v5, v6}, Lflyme/support/v7/app/FlymeAlertController;->getTextWidth(Landroid/widget/TextView;Ljava/lang/CharSequence;)I

    move-result v5

    if-le v5, v0, :cond_3d

    return v3

    :cond_3d
    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    .line 1395
    :cond_40
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v5, :cond_58

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_58

    .line 1396
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-direct {p0, v5, v6}, Lflyme/support/v7/app/FlymeAlertController;->getTextWidth(Landroid/widget/TextView;Ljava/lang/CharSequence;)I

    move-result v5

    if-le v5, v0, :cond_55

    return v3

    :cond_55
    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    .line 1404
    :cond_58
    iget-boolean v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mActionDialog:Z

    if-eqz v0, :cond_5d

    return v3

    :cond_5d
    if-ne v4, v3, :cond_60

    return v2

    :cond_60
    add-int/2addr v4, v3

    .line 1409
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    .line 1410
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_button_min_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    .line 1411
    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogWidth:I

    if-le v1, p0, :cond_74

    move v2, v3

    :cond_74
    return v2
.end method

.method private isCustomViewSpacingSpecified(Landroid/view/View;)Z
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1621
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 1625
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_25

    .line 1626
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1627
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v0, :cond_25

    return v1

    .line 1632
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_46

    .line 1633
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1634
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    sget v1, Lflyme/support/v7/appcompat/R$id;->customPanel:I

    if-eq v0, v1, :cond_46

    .line 1635
    invoke-direct {p0, p1}, Lflyme/support/v7/app/FlymeAlertController;->isCustomViewSpacingSpecified(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method private isMessageViewOneLine()Z
    .registers 4

    .line 1711
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2a

    .line 1714
    :cond_e
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2}, Lflyme/support/v7/app/FlymeAlertController;->getTextWidth(Landroid/widget/TextView;Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogWidth:I

    if-gt v0, p0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :cond_2a
    :goto_2a
    return v1
.end method

.method private isTitleViewOneLine()Z
    .registers 8

    .line 1686
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_88

    .line 1687
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lflyme/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1688
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1689
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    .line 1690
    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1691
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v2

    add-int v2, v3, v4

    .line 1693
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    .line 1694
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1695
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 1696
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v3

    .line 1698
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lflyme/support/v7/app/FlymeAlertController;->getTextWidth(Landroid/widget/TextView;Ljava/lang/CharSequence;)I

    move-result v3

    .line 1699
    iget v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconId:I

    if-nez v4, :cond_52

    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_86

    :cond_52
    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_86

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_86

    .line 1700
    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_title_icon_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v1

    .line 1701
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1702
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1703
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    goto :goto_8c

    :cond_86
    move v4, v1

    goto :goto_8c

    :cond_88
    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_8c
    add-int/2addr v3, v0

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    .line 1707
    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogWidth:I

    if-gt v3, p0, :cond_94

    const/4 v1, 0x1

    :cond_94
    return v1
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_11

    const/4 v2, -0x1

    .line 742
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v0

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz p2, :cond_1f

    const/4 p1, 0x1

    .line 745
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_f

    .line 443
    instance-of p0, p2, Landroid/view/ViewStub;

    if-eqz p0, :cond_c

    .line 444
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 447
    :cond_c
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_f
    if-eqz p2, :cond_1e

    .line 452
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 453
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 454
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 459
    :cond_1e
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_28

    .line 460
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 463
    :cond_28
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private selectContentView()I
    .registers 4

    .line 241
    iget v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_7

    .line 242
    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogLayout:I

    return p0

    .line 244
    :cond_7
    iget v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    return v0

    .line 247
    :cond_d
    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogLayout:I

    return p0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 7

    .line 558
    iget-object p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget p4, Lflyme/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {p2, p4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 559
    iget-object p4, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v0, Lflyme/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {p4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_1b

    .line 576
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object p2, v0

    :cond_1b
    if-eqz p4, :cond_25

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_25

    .line 580
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object p4, v0

    :cond_25
    if-nez p2, :cond_29

    if-eqz p4, :cond_65

    .line 588
    :cond_29
    iget-object p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessage:Ljava/lang/CharSequence;

    const-wide/16 v0, 0x64

    if-eqz p3, :cond_44

    .line 590
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p3, Lflyme/support/v7/app/FlymeAlertController$2;

    invoke-direct {p3, p0, p2, p4}, Lflyme/support/v7/app/FlymeAlertController$2;-><init>(Lflyme/support/v7/app/FlymeAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 597
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p3, Lflyme/support/v7/app/FlymeAlertController$3;

    invoke-direct {p3, p0, p2, p4}, Lflyme/support/v7/app/FlymeAlertController$3;-><init>(Lflyme/support/v7/app/FlymeAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_65

    .line 603
    :cond_44
    iget-object p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz p3, :cond_5b

    .line 605
    new-instance p1, Lflyme/support/v7/app/FlymeAlertController$4;

    invoke-direct {p1, p0, p2, p4}, Lflyme/support/v7/app/FlymeAlertController$4;-><init>(Lflyme/support/v7/app/FlymeAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 616
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    new-instance p3, Lflyme/support/v7/app/FlymeAlertController$5;

    invoke-direct {p3, p0, p2, p4}, Lflyme/support/v7/app/FlymeAlertController$5;-><init>(Lflyme/support/v7/app/FlymeAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_65

    :cond_5b
    if-eqz p2, :cond_60

    .line 625
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_60
    if-eqz p4, :cond_65

    .line 628
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_65
    :goto_65
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 9

    const v0, 0x1020019

    .line 754
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 755
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    .line 758
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v4

    goto :goto_47

    .line 760
    :cond_2a
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_41

    .line 762
    iget v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonIconDimen:I

    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 763
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 765
    :cond_41
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    :goto_47
    const v5, 0x102001a

    .line 769
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 770
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6b

    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6b

    .line 773
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_89

    .line 775
    :cond_6b
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_82

    .line 777
    iget v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonIconDimen:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 778
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 780
    :cond_82
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_89
    const v5, 0x102001b

    .line 784
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 785
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ad

    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_ad

    .line 788
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_cb

    .line 790
    :cond_ad
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c4

    .line 792
    iget v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonIconDimen:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 793
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 795
    :cond_c4
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    :goto_cb
    if-eqz v0, :cond_cf

    move v0, v2

    goto :goto_d0

    :cond_cf
    move v0, v4

    :goto_d0
    if-nez v0, :cond_d6

    .line 801
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_135

    .line 803
    :cond_d6
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/LinearLayout;

    if-nez p1, :cond_e1

    return-void

    .line 806
    :cond_e1
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 807
    invoke-direct {p0}, Lflyme/support/v7/app/FlymeAlertController;->isButtonLayoutVertical()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 808
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 809
    iget-boolean v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mActionDialog:Z

    if-eqz v0, :cond_10c

    .line 811
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0xd000000

    .line 812
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 813
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 815
    :cond_10c
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lflyme/support/v7/app/FlymeAlertController;->applyVerticalButtonStyle(Landroid/widget/Button;)V

    .line 816
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lflyme/support/v7/app/FlymeAlertController;->applyVerticalButtonStyle(Landroid/widget/Button;)V

    .line 817
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lflyme/support/v7/app/FlymeAlertController;->applyVerticalButtonStyle(Landroid/widget/Button;)V

    goto :goto_135

    .line 819
    :cond_11c
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 820
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 821
    invoke-direct {p0}, Lflyme/support/v7/app/FlymeAlertController;->calcButtonLayoutPadding()I

    move-result p1

    .line 822
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lflyme/support/v7/app/FlymeAlertController;->applyHorizontalButtonStyle(Landroid/widget/Button;I)V

    .line 823
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lflyme/support/v7/app/FlymeAlertController;->applyHorizontalButtonStyle(Landroid/widget/Button;I)V

    .line 824
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lflyme/support/v7/app/FlymeAlertController;->applyHorizontalButtonStyle(Landroid/widget/Button;I)V

    :goto_135
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 5

    .line 713
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lflyme/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 714
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 715
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    .line 718
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    .line 719
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_27

    return-void

    .line 723
    :cond_27
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2f

    .line 724
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    :cond_2f
    const/16 v1, 0x8

    .line 726
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 729
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_5c

    .line 730
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 731
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 732
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 733
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5f

    .line 735
    :cond_5c
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_5f
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 7

    .line 637
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    goto :goto_18

    .line 639
    :cond_6
    iget v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_17

    .line 640
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 641
    iget v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    if-eqz v1, :cond_23

    .line 647
    invoke-static {v0}, Lflyme/support/v7/app/FlymeAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 648
    :cond_23
    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2a
    if-eqz v1, :cond_5c

    .line 652
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lflyme/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 653
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    iget-boolean v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_4e

    .line 656
    iget v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingLeft:I

    iget v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingTop:I

    iget v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingRight:I

    iget v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 659
    :cond_4e
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_61

    .line 660
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    goto :goto_61

    :cond_5c
    const/16 p0, 0x8

    .line 663
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_61
    :goto_61
    return-void
.end method

.method private setupSpaceView(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 25

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    .line 1232
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    if-eqz p2, :cond_19

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_19

    move v4, v1

    goto :goto_1a

    :cond_19
    move v4, v2

    :goto_1a
    if-eqz p3, :cond_24

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_24

    move v5, v1

    goto :goto_25

    :cond_24
    move v5, v2

    :goto_25
    if-eqz p4, :cond_2f

    .line 1235
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2f

    move v6, v1

    goto :goto_30

    :cond_2f
    move v6, v2

    .line 1237
    :goto_30
    iget-object v7, v0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lflyme/support/v7/appcompat/R$id;->dialogSpace1:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/widget/Space;

    .line 1238
    iget-object v7, v0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lflyme/support/v7/appcompat/R$id;->dialogSpace2:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/widget/Space;

    .line 1239
    iget-object v7, v0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lflyme/support/v7/appcompat/R$id;->dialogSpace3:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/widget/Space;

    .line 1240
    iget-object v7, v0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v8, Lflyme/support/v7/appcompat/R$id;->dialogSpace4:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/widget/Space;

    if-nez v4, :cond_63

    if-eqz v5, :cond_61

    goto :goto_63

    :cond_61
    move v4, v2

    goto :goto_64

    :cond_63
    :goto_63
    const/4 v4, 0x2

    :goto_64
    or-int/2addr v3, v4

    if-eqz v6, :cond_69

    const/4 v4, 0x4

    goto :goto_6a

    :cond_69
    move v4, v2

    :goto_6a
    or-int/2addr v3, v4

    const/4 v4, 0x0

    .line 1246
    iget-boolean v6, v0, Lflyme/support/v7/app/FlymeAlertController;->mCustomPaddingRule:Z

    if-eqz v6, :cond_89

    .line 1247
    new-instance v1, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    const/4 v15, 0x0

    iget v2, v0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace1:I

    iget v3, v0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace2:I

    iget v4, v0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace3:I

    iget v5, v0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace4:I

    move-object v14, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v14 .. v19}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;-><init>(IIIII)V

    :goto_87
    move-object v8, v1

    goto :goto_d6

    .line 1250
    :cond_89
    iget-object v6, v0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_ac

    .line 1251
    iget-boolean v5, v0, Lflyme/support/v7/app/FlymeAlertController;->mActionDialog:Z

    if-eqz v5, :cond_a9

    .line 1252
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_a6

    iget-object v5, v0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ne v5, v1, :cond_a6

    .line 1253
    sget-object v1, Lflyme/support/v7/app/FlymeAlertController;->sSingleActionPaddingRules:Ljava/util/List;

    goto :goto_b3

    .line 1255
    :cond_a6
    sget-object v1, Lflyme/support/v7/app/FlymeAlertController;->sActionListPaddingRules:Ljava/util/List;

    goto :goto_b3

    .line 1258
    :cond_a9
    sget-object v1, Lflyme/support/v7/app/FlymeAlertController;->sListPaddingRules:Ljava/util/List;

    goto :goto_b3

    :cond_ac
    if-eqz v5, :cond_b1

    .line 1262
    sget-object v1, Lflyme/support/v7/app/FlymeAlertController;->sCustomViewRules:Ljava/util/List;

    goto :goto_b3

    .line 1264
    :cond_b1
    sget-object v1, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    .line 1267
    :goto_b3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    .line 1268
    invoke-static {v5}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->access$300(Lflyme/support/v7/app/FlymeAlertController$PaddingRule;)I

    move-result v6

    if-ne v3, v6, :cond_b7

    move-object v4, v5

    :cond_ca
    if-nez v4, :cond_d5

    .line 1274
    sget-object v1, Lflyme/support/v7/app/FlymeAlertController;->sPaddingRules:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;

    goto :goto_87

    :cond_d5
    move-object v8, v4

    .line 1277
    :goto_d6
    iget-object v9, v0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-static/range {v8 .. v13}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->access$400(Lflyme/support/v7/app/FlymeAlertController$PaddingRule;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 7

    .line 668
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_20

    .line 670
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 672
    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 675
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget p1, Lflyme/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 676
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_98

    .line 678
    :cond_20
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    .line 680
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_85

    .line 681
    iget-boolean v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mShowTitle:Z

    if-eqz v0, :cond_85

    .line 683
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v0, Lflyme/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    .line 684
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconId:I

    if-eqz p1, :cond_58

    .line 690
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_98

    .line 691
    :cond_58
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_62

    .line 692
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_98

    .line 696
    :cond_62
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    .line 697
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    .line 698
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    .line 699
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 696
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 700
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_98

    .line 704
    :cond_85
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lflyme/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 705
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_98
    return-void
.end method

.method private setupView()V
    .registers 12

    .line 467
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lflyme/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 468
    sget v1, Lflyme/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 469
    sget v2, Lflyme/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 470
    sget v3, Lflyme/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 474
    sget v4, Lflyme/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 475
    invoke-direct {p0, v0}, Lflyme/support/v7/app/FlymeAlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 477
    sget v4, Lflyme/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 478
    sget v5, Lflyme/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 479
    sget v6, Lflyme/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 482
    invoke-direct {p0, v4, v1}, Lflyme/support/v7/app/FlymeAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 483
    invoke-direct {p0, v5, v2}, Lflyme/support/v7/app/FlymeAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 484
    invoke-direct {p0, v6, v3}, Lflyme/support/v7/app/FlymeAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 486
    invoke-direct {p0, v2}, Lflyme/support/v7/app/FlymeAlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 487
    invoke-direct {p0, v3}, Lflyme/support/v7/app/FlymeAlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 488
    invoke-direct {p0, v1}, Lflyme/support/v7/app/FlymeAlertController;->setupTitle(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5a

    .line 490
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_5a

    move v7, v5

    goto :goto_5b

    :cond_5a
    move v7, v6

    :goto_5b
    if-eqz v1, :cond_65

    .line 491
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_65

    move v8, v5

    goto :goto_66

    :cond_65
    move v8, v6

    :goto_66
    if-eqz v3, :cond_70

    .line 492
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v9

    if-eq v9, v4, :cond_70

    move v4, v5

    goto :goto_71

    :cond_70
    move v4, v6

    :goto_71
    if-nez v4, :cond_80

    if-eqz v2, :cond_80

    .line 497
    sget v9, Lflyme/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_80

    .line 499
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_80
    if-eqz v8, :cond_9e

    .line 506
    iget-object v9, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v9, :cond_89

    .line 507
    invoke-virtual {v9, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    :cond_89
    const/4 v9, 0x0

    .line 512
    iget-object v10, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v10, :cond_92

    iget-object v10, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v10, :cond_98

    .line 513
    :cond_92
    sget v9, Lflyme/support/v7/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    :cond_98
    if-eqz v9, :cond_ab

    .line 517
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ab

    :cond_9e
    if-eqz v2, :cond_ab

    .line 521
    sget v9, Lflyme/support/v7/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_ab

    .line 523
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :cond_ab
    :goto_ab
    iget-object v9, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    instance-of v10, v9, Lflyme/support/v7/app/FlymeAlertController$RecycleListView;

    if-eqz v10, :cond_b6

    .line 529
    check-cast v9, Lflyme/support/v7/app/FlymeAlertController$RecycleListView;

    invoke-virtual {v9, v8, v4}, Lflyme/support/v7/app/FlymeAlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_b6
    if-nez v7, :cond_ce

    .line 534
    iget-boolean v7, p0, Lflyme/support/v7/app/FlymeAlertController;->mActionDialog:Z

    if-nez v7, :cond_ce

    .line 535
    iget-object v7, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_c1

    goto :goto_c3

    :cond_c1
    iget-object v7, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    :goto_c3
    if-eqz v7, :cond_ce

    if-eqz v4, :cond_c8

    const/4 v6, 0x2

    :cond_c8
    or-int v4, v8, v6

    const/4 v6, 0x3

    .line 539
    invoke-direct {p0, v2, v7, v4, v6}, Lflyme/support/v7/app/FlymeAlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 543
    :cond_ce
    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_e4

    .line 544
    iget-object v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_e4

    .line 545
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 546
    iget v6, p0, Lflyme/support/v7/app/FlymeAlertController;->mCheckedItem:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_e4

    .line 548
    invoke-virtual {v4, v6, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 549
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 553
    :cond_e4
    invoke-direct {p0, v1, v2, v0, v3}, Lflyme/support/v7/app/FlymeAlertController;->setupSpaceView(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public applyMeizuStyle()V
    .registers 8

    .line 1484
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1485
    :goto_f
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    .line 1486
    :goto_1c
    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_27

    if-eqz v0, :cond_27

    .line 1491
    iget-object v4, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lflyme/support/v7/app/FlymeAlertController;->applyMessageTextAppearance(Landroid/widget/TextView;)V

    :cond_27
    const/16 v4, 0x11

    if-eqz v0, :cond_38

    if-nez v3, :cond_38

    .line 1493
    invoke-direct {p0}, Lflyme/support/v7/app/FlymeAlertController;->isTitleViewOneLine()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1495
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1498
    :cond_38
    iget-object v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_44

    move v3, v2

    goto :goto_45

    :cond_44
    move v3, v1

    :goto_45
    if-eqz v3, :cond_52

    .line 1499
    invoke-direct {p0}, Lflyme/support/v7/app/FlymeAlertController;->isMessageViewOneLine()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1501
    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    :cond_52
    if-nez v0, :cond_5b

    if-eqz v3, :cond_5b

    .line 1506
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lflyme/support/v7/app/FlymeAlertController;->applyTitleTextAppearance(Landroid/widget/TextView;)V

    .line 1509
    :cond_5b
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_67

    iget-boolean v3, p0, Lflyme/support/v7/app/FlymeAlertController;->mActionDialog:Z

    if-eqz v3, :cond_67

    const/4 v3, 0x0

    .line 1511
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    :cond_67
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lflyme/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7c

    .line 1515
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_7c

    move v1, v2

    :cond_7c
    if-eqz v1, :cond_c9

    .line 1516
    iget-boolean v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingSpecified:Z

    if-nez v1, :cond_c9

    .line 1517
    invoke-direct {p0, v0}, Lflyme/support/v7/app/FlymeAlertController;->findEditText(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 1519
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_97

    .line 1521
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1523
    :cond_97
    invoke-direct {p0, v0}, Lflyme/support/v7/app/FlymeAlertController;->isCustomViewSpacingSpecified(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 1524
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lflyme/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1525
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1526
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_edittext_padding_left:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1527
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_edittext_padding_right:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1533
    :cond_c9
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1534
    iget v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mAlertDialogWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1537
    iget v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mMaxHeight:I

    const/4 v3, 0x2

    if-nez v1, :cond_ec

    .line 1538
    invoke-direct {p0}, Lflyme/support/v7/app/FlymeAlertController;->getScreenHeight()I

    move-result v1

    iget-object v5, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_margin_bottom_to_screen:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    mul-int/2addr v5, v3

    sub-int/2addr v1, v5

    iput v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mMaxHeight:I

    .line 1540
    :cond_ec
    iget v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mMaxHeight:I

    invoke-virtual {p0, v1}, Lflyme/support/v7/app/FlymeAlertController;->setMaxHeight(I)V

    .line 1542
    iget v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mGravity:I

    const/16 v5, 0x50

    if-eqz v1, :cond_fa

    .line 1543
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_108

    .line 1544
    :cond_fa
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_106

    iget-boolean v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mActionDialog:Z

    if-eqz v1, :cond_103

    goto :goto_106

    .line 1548
    :cond_103
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_108

    .line 1546
    :cond_106
    :goto_106
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1550
    :goto_108
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v1, v5, :cond_152

    .line 1552
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_127

    .line 1553
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_margin_bottom_to_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_14f

    .line 1555
    :cond_127
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/common/util/CommonUtils;->isShowNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 1556
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_margin_bottom_to_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    .line 1557
    invoke-static {v2}, Lcom/meizu/common/util/ScreenUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_14f

    .line 1559
    :cond_143
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_margin_bottom_to_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1562
    :goto_14f
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_176

    :cond_152
    if-ne v1, v4, :cond_176

    .line 1564
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_176

    .line 1565
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "status_bar_height"

    .line 1566
    invoke-static {v2, v4}, Lcom/meizu/common/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1570
    :cond_176
    :goto_176
    iget-boolean v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mAutoShowSoftInput:Z

    if-eqz v0, :cond_181

    .line 1571
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1574
    :cond_181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_18d

    .line 1575
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setElevation(F)V

    :cond_18d
    return-void
.end method

.method public getButton(I)Landroid/widget/Button;
    .registers 3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_11

    const/4 v0, -0x2

    if-eq p1, v0, :cond_e

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 410
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 412
    :cond_e
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    .line 414
    :cond_11
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getIconAttributeResId(I)I
    .registers 4

    .line 398
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 399
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 400
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public installContent()V
    .registers 3

    .line 234
    invoke-direct {p0}, Lflyme/support/v7/app/FlymeAlertController;->selectContentView()I

    move-result v0

    .line 235
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mDialog:Lflyme/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Lflyme/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 236
    invoke-direct {p0}, Lflyme/support/v7/app/FlymeAlertController;->setupView()V

    .line 237
    invoke-virtual {p0}, Lflyme/support/v7/app/FlymeAlertController;->applyMeizuStyle()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 422
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 427
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 325
    iget-object p4, p0, Lflyme/support/v7/app/FlymeAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    const/4 p3, -0x3

    if-eq p1, p3, :cond_29

    const/4 p3, -0x2

    if-eq p1, p3, :cond_22

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1a

    .line 331
    iput-object p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 332
    iput-object p4, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 333
    iput-object p5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2f

    .line 349
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_22
    iput-object p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 338
    iput-object p4, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 339
    iput-object p5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2f

    .line 343
    :cond_29
    iput-object p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 344
    iput-object p4, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 345
    iput-object p5, p0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    :goto_2f
    return-void
.end method

.method public setCustomPaddingRule(IIII)V
    .registers 6

    const/4 v0, 0x1

    .line 1221
    iput-boolean v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mCustomPaddingRule:Z

    .line 1222
    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace1:I

    .line 1223
    iput p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace2:I

    .line 1224
    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace3:I

    .line 1225
    iput p4, p0, Lflyme/support/v7/app/FlymeAlertController;->mPaddingSpace4:I

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setGravity(I)V
    .registers 2

    .line 1190
    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mGravity:I

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 361
    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconId:I

    .line 363
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    .line 365
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconId:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    :cond_17
    const/16 p0, 0x8

    .line 368
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 379
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 380
    iput v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconId:I

    .line 382
    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_19

    if-eqz p1, :cond_14

    .line 384
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    :cond_14
    const/16 p0, 0x8

    .line 387
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3

    int-to-float p1, p1

    .line 1181
    iget v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mDensityRatio:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mMaxHeight:I

    .line 1182
    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mWindow:Landroid/view/Window;

    sget v0, Lflyme/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/FlymeAlertDialogLayout;

    if-eqz p1, :cond_18

    .line 1184
    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mMaxHeight:I

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/FlymeAlertDialogLayout;->setMaxHeight(I)V

    :cond_18
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 266
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 267
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 251
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 252
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 253
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setView(I)V
    .registers 3

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lflyme/support/v7/app/FlymeAlertController;->mView:Landroid/view/View;

    .line 276
    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 285
    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewLayoutResId:I

    .line 286
    iput-boolean p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 6

    .line 293
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 294
    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingSpecified:Z

    .line 296
    iput p2, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingLeft:I

    .line 297
    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingTop:I

    .line 298
    iput p4, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingRight:I

    .line 299
    iput p5, p0, Lflyme/support/v7/app/FlymeAlertController;->mViewSpacingBottom:I

    return-void
.end method
