.class final Lcom/android/server/autofill/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ViewState$Listener;
    }
.end annotation


# static fields
.field public static final STATE_AUTOFILLED:I = 0x4

.field public static final STATE_AUTOFILLED_ONCE:I = 0x800

.field public static final STATE_AUTOFILL_FAILED:I = 0x400

.field public static final STATE_CHANGED:I = 0x8

.field public static final STATE_FILLABLE:I = 0x2

.field public static final STATE_IGNORED:I = 0x80

.field public static final STATE_INITIAL:I = 0x1

.field public static final STATE_RESTARTED_SESSION:I = 0x100

.field public static final STATE_STARTED_PARTITION:I = 0x20

.field public static final STATE_STARTED_SESSION:I = 0x10

.field public static final STATE_TRIGGERED_AUGMENTED_AUTOFILL:I = 0x1000

.field public static final STATE_URL_BAR:I = 0x200

.field public static final STATE_WAITING_DATASET_AUTH:I = 0x40

.field private static final TAG:Ljava/lang/String; = "ViewState"


# instance fields
.field public final id:Landroid/view/autofill/AutofillId;

.field private mAutofilledValue:Landroid/view/autofill/AutofillValue;

.field private mCurrentValue:Landroid/view/autofill/AutofillValue;

.field private mDatasetId:Ljava/lang/String;

.field private final mListener:Lcom/android/server/autofill/ViewState$Listener;

.field private mResponse:Landroid/service/autofill/FillResponse;

.field private mSanitizedValue:Landroid/view/autofill/AutofillValue;

.field private mState:I

.field private mVirtualBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 92
    iput-object p2, p0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    .line 93
    iput p3, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 94
    return-void
.end method

.method static getStateAsString(I)Ljava/lang/String;
    .registers 3

    .line 152
    const-class v0, Lcom/android/server/autofill/ViewState;

    const-string v1, "STATE_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 237
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "datasetId:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    :cond_1e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    if-eqz v0, :cond_44

    .line 241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "response id:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 243
    :cond_44
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_55

    .line 244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "currentValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    :cond_55
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_66

    .line 247
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autofilledValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 249
    :cond_66
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_78

    .line 250
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sanitizedValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 252
    :cond_78
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_8a

    .line 253
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "virtualBounds:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 255
    :cond_8a
    return-void
.end method

.method getAutofilledValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method getCurrentValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method getDatasetId()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    return-object v0
.end method

.method getResponse()Landroid/service/autofill/FillResponse;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    return-object v0
.end method

.method getSanitizedValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method getState()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    return v0
.end method

.method getStateAsString()Ljava/lang/String;
    .registers 2

    .line 148
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    invoke-static {v0}, Lcom/android/server/autofill/ViewState;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVirtualBounds()Landroid/graphics/Rect;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method maybeCallOnFillReady(I)V
    .registers 5

    .line 199
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_33

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_33

    .line 200
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_32

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring UI for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewState"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_32
    return-void

    .line 204
    :cond_33
    iget-object p1, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    if-eqz p1, :cond_50

    .line 205
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 206
    :cond_45
    iget-object p1, p0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/server/autofill/ViewState$Listener;->onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    .line 209
    :cond_50
    return-void
.end method

.method resetState(I)V
    .registers 3

    .line 167
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 168
    return-void
.end method

.method setAutofilledValue(Landroid/view/autofill/AutofillValue;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 123
    return-void
.end method

.method setCurrentValue(Landroid/view/autofill/AutofillValue;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 114
    return-void
.end method

.method setDatasetId(Ljava/lang/String;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 177
    return-void
.end method

.method setResponse(Landroid/service/autofill/FillResponse;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    .line 141
    return-void
.end method

.method setSanitizedValue(Landroid/view/autofill/AutofillValue;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 132
    return-void
.end method

.method setState(I)V
    .registers 4

    .line 156
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 157
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    goto :goto_b

    .line 159
    :cond_8
    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 161
    :goto_b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    .line 162
    iget p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 164
    :cond_14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewState: [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 215
    const-string v1, ", datasetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_1a
    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_34

    .line 219
    const-string v1, ", currentValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    :cond_34
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_42

    .line 222
    const-string v1, ", autofilledValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    :cond_42
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_50

    .line 225
    const-string v1, ", sanitizedValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    :cond_50
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5e

    .line 228
    const-string v1, ", virtualBounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    :cond_5e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V
    .registers 4

    .line 183
    if-eqz p1, :cond_4

    .line 184
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 186
    :cond_4
    if-eqz p2, :cond_8

    .line 187
    iput-object p2, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 190
    :cond_8
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 191
    return-void
.end method
