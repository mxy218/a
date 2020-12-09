.class Lcom/android/server/wm/DisplayWindowSettings$Entry;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private mFixedToUserRotation:I

.field private mForcedDensity:I

.field private mForcedHeight:I

.field private mForcedScalingMode:I

.field private mForcedWidth:I

.field private final mName:Ljava/lang/String;

.field private mOverscanBottom:I

.field private mOverscanLeft:I

.field private mOverscanRight:I

.field private mOverscanTop:I

.field private mRemoveContentMode:I

.field private mShouldShowIme:Z

.field private mShouldShowSystemDecors:Z

.field private mShouldShowWithInsecureKeyguard:Z

.field private mUserRotation:I

.field private mUserRotationMode:I

.field private mWindowingMode:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    .line 108
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    .line 109
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    .line 113
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    .line 114
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    .line 115
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    .line 118
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    .line 122
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V
    .registers 3

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;)V
    .registers 3

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;)V

    .line 127
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    .line 128
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    .line 129
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    .line 130
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    .line 131
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    .line 132
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    .line 133
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    .line 134
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    .line 135
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    .line 136
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    .line 137
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    .line 138
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    .line 139
    iget-boolean p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    .line 140
    iget-boolean p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    .line 141
    iget-boolean p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    .line 142
    iget p1, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;Lcom/android/server/wm/DisplayWindowSettings$1;)V
    .registers 4

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    return p0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 2

    .line 101
    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    return p1
.end method

.method private isEmpty()Z
    .registers 2

    .line 147
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    if-nez v0, :cond_42

    const/4 v0, 0x1

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    return v0
.end method
